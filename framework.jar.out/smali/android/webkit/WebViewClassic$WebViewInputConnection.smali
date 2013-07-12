.class Landroid/webkit/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;
    }
.end annotation


# instance fields
.field isCommit:Z

.field isComposing:Z

.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field mOldText:Landroid/text/Editable;

.field mShowSipHelper:Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;

.field mayNeedRestartInput:Z

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 315
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    .line 316
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 205
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    .line 207
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mOldText:Landroid/text/Editable;

    .line 211
    new-instance v0, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;-><init>(Landroid/webkit/WebViewClassic$WebViewInputConnection;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mShowSipHelper:Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;

    .line 319
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mayNeedRestartInput:Z

    .line 321
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "numReplaced"

    .prologue
    const/4 v4, 0x0

    .line 998
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 999
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1000
    .local v0, editable:Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 1001
    .local v1, maxReplace:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1002
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1004
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1007
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #maxReplace:I
    :cond_0
    return-object p1
.end method

.method private restartInput()V
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1012
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1015
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1018
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mayNeedRestartInput:Z

    .line 1021
    :cond_0
    return-void
.end method

.method private sendCharacter(C)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 959
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 960
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 962
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 963
    .local v1, chars:[C
    aput-char p1, v1, v9

    .line 964
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 965
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 966
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 968
    .local v2, event:Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x4

    invoke-static {v2, v7}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 971
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 966
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 974
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v2           #event:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x91

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 975
    .local v6, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 977
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .parameter "keyCode"

    .prologue
    .line 985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 986
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 990
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 994
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 30
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 792
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v15

    .line 794
    .local v15, newEditable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mOldText:Landroid/text/Editable;

    .line 795
    .local v8, editable:Landroid/text/Editable;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 796
    .local v18, original:Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 797
    .local v11, isCharacterAdd:Z
    const/4 v12, 0x0

    .line 798
    .local v12, isCharacterDelete:Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v25

    .line 799
    .local v25, textLength:I
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 800
    .local v19, originalLength:I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v23

    .line 801
    .local v23, selectionStart:I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v22

    .line 802
    .local v22, selectionEnd:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 803
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 804
    add-int/lit8 v26, v19, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_5

    const/4 v11, 0x1

    .line 821
    :cond_0
    :goto_0
    invoke-static {v15}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v14

    .line 822
    .local v14, newCompsingStart:I
    invoke-static {v15}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v13

    .line 824
    .local v13, newCompsingEnd:I
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 825
    const-string/jumbo v26, "webview"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[WebViewClassic.WebViewInputConnection::setNewText] >> isCommit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " isPreviousComposing="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(composed)newCompsingStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newCompsingEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(original)selectionStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " selectionEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mBatchLevel="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mIsBatchingTextChanges="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\nstart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " end="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " original=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] text=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    .line 833
    .local v7, composing:Z
    if-ltz v14, :cond_8

    if-ltz v13, :cond_8

    if-eq v14, v13, :cond_8

    const/16 v24, 0x1

    .line 834
    .local v24, stillComposing:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    .line 839
    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v21

    .line 842
    .local v21, selecting:Z
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v17

    .line 843
    .local v17, oldLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-eqz v26, :cond_f

    if-eqz v7, :cond_f

    .line 846
    move-object/from16 v9, p3

    .line 848
    .local v9, editingTxt:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 849
    move/from16 v0, v22

    if-ne v0, v13, :cond_c

    const/4 v10, 0x1

    .line 850
    .local v10, finishComposing:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 851
    .local v6, commit:Landroid/os/Message;
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_d

    .line 853
    const/16 v26, 0xb5

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    .line 857
    :goto_4
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 859
    if-nez v21, :cond_2

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    .line 862
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    .end local v6           #commit:Landroid/os/Message;
    .end local v9           #editingTxt:Ljava/lang/CharSequence;
    .end local v10           #finishComposing:Z
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 945
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .local v16, newText:Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 947
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 948
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v26

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 951
    .end local v16           #newText:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 952
    return-void

    .line 804
    .end local v7           #composing:Z
    .end local v13           #newCompsingEnd:I
    .end local v14           #newCompsingStart:I
    .end local v17           #oldLen:I
    .end local v21           #selecting:Z
    .end local v24           #stillComposing:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 807
    :cond_6
    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 808
    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_7

    const/4 v12, 0x1

    :goto_6
    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_6

    .line 833
    .restart local v7       #composing:Z
    .restart local v13       #newCompsingEnd:I
    .restart local v14       #newCompsingStart:I
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 837
    .restart local v24       #stillComposing:Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_a

    if-eqz v24, :cond_b

    :cond_a
    const/4 v7, 0x1

    :goto_7
    goto/16 :goto_2

    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 849
    .restart local v9       #editingTxt:Ljava/lang/CharSequence;
    .restart local v17       #oldLen:I
    .restart local v21       #selecting:Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 855
    .restart local v6       #commit:Landroid/os/Message;
    .restart local v10       #finishComposing:Z
    :cond_d
    const/16 v26, 0xb4

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    goto/16 :goto_4

    .line 866
    .end local v6           #commit:Landroid/os/Message;
    .end local v10           #finishComposing:Z
    :cond_e
    if-nez v21, :cond_3

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb4

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 874
    .end local v9           #editingTxt:Ljava/lang/CharSequence;
    :cond_f
    if-eqz v11, :cond_12

    .line 876
    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 877
    .local v5, ch:C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-eqz v26, :cond_11

    const/16 v26, 0xa

    move/from16 v0, v26

    if-eq v5, v0, :cond_11

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 882
    if-eqz v21, :cond_10

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 885
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 889
    :cond_11
    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    goto/16 :goto_5

    .line 890
    .end local v5           #ch:C
    :cond_12
    if-eqz v12, :cond_15

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v26

    if-eqz v26, :cond_14

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_14

    if-nez v21, :cond_14

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8f

    add-int/lit8 v28, v22, -0x1

    const-string v29, ""

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v22

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 899
    .local v20, replaceMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 902
    .end local v20           #replaceMessage:Landroid/os/Message;
    :cond_14
    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    goto/16 :goto_5

    .line 903
    :cond_15
    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-nez v26, :cond_3

    .line 907
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-eqz v26, :cond_19

    .line 908
    if-eqz v21, :cond_17

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-nez v26, :cond_17

    .line 910
    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    goto/16 :goto_5

    .line 912
    :cond_17
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_18

    if-nez v21, :cond_18

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 915
    .restart local v20       #replaceMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 917
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 921
    .end local v20           #replaceMessage:Landroid/os/Message;
    :cond_18
    move-object/from16 v9, p3

    .line 922
    .restart local v9       #editingTxt:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 923
    if-eqz v21, :cond_3

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 933
    .end local v9           #editingTxt:Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 935
    .restart local v20       #replaceMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v26

    if-eqz v26, :cond_3

    if-eqz v21, :cond_3

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5
.end method

.method private updateSelection()V
    .locals 10

    .prologue
    const/16 v9, 0xb6

    .line 761
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 762
    .local v6, editable:Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 763
    .local v2, selectionStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 764
    .local v3, selectionEnd:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 765
    .local v4, composingStart:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 766
    .local v5, composingEnd:I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 767
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 772
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v2, v2, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v9, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 781
    :cond_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 341
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    .line 530
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    .line 531
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 532
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    .line 534
    return v1
.end method

.method completeComposing()V
    .locals 5

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 262
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 263
    .local v2, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 264
    .local v1, end:I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-eq v2, v1, :cond_0

    .line 265
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->htc_commitText(Ljava/lang/CharSequence;I)Z

    .line 266
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 267
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 269
    :cond_0
    return-void
.end method

.method copyEditableWithSelectSpan(Landroid/text/Editable;)V
    .locals 5
    .parameter "editable"

    .prologue
    .line 253
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mOldText:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 254
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 255
    .local v1, selectStart:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 256
    .local v0, selectEnd:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 257
    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 12
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v11, 0x0

    const/4 v9, -0x1

    .line 541
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 542
    .local v4, content:Landroid/text/Editable;
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 543
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 544
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 546
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 547
    move v8, v0

    .line 548
    .local v8, tmp:I
    move v0, v1

    .line 549
    move v1, v8

    .line 552
    .end local v8           #tmp:I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 553
    .local v2, ca:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 554
    .local v3, cb:I
    if-ge v3, v2, :cond_1

    .line 555
    move v8, v2

    .line 556
    .restart local v8       #tmp:I
    move v2, v3

    .line 557
    move v3, v8

    .line 559
    .end local v8           #tmp:I
    :cond_1
    if-eq v2, v9, :cond_3

    if-eq v3, v9, :cond_3

    .line 560
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 561
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 564
    :cond_3
    const/4 v5, 0x0

    .line 566
    .local v5, deleted:Z
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    add-int v10, v1, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 567
    .local v6, endDelete:I
    if-le v6, v1, :cond_4

    .line 568
    const/4 v5, 0x1

    .line 569
    const-string v9, ""

    invoke-direct {p0, v1, v6, v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 571
    :cond_4
    sub-int v9, v0, p1

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 572
    .local v7, startDelete:I
    if-ge v7, v0, :cond_5

    .line 573
    const/4 v5, 0x1

    .line 574
    const-string v9, ""

    invoke-direct {p0, v7, v0, v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 578
    :cond_5
    if-eqz v5, :cond_6

    if-ne v0, v1, :cond_7

    if-nez v0, :cond_7

    .line 580
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 581
    const/16 v9, 0x43

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    .line 582
    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 586
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v9

    return v9
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 348
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 5

    .prologue
    .line 273
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isCommit:Z

    if-nez v3, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 275
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 276
    .local v2, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 277
    .local v1, end:I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-eq v2, v1, :cond_0

    .line 278
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->htc_commitText(Ljava/lang/CharSequence;I)Z

    .line 281
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v2           #start:I
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v3

    return v3
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method htc_commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f5

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method htc_handleKey(I)Z
    .locals 1
    .parameter "keycode"

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method htc_setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 240
    .local v2, editable:Landroid/text/Editable;
    invoke-static {v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    .line 241
    .local v3, s:I
    add-int/lit8 v4, v3, 0x1

    const-class v5, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 242
    .local v0, bg:[Landroid/text/style/BackgroundColorSpan;
    array-length v4, v0

    if-lez v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v1

    .line 243
    .local v1, color:I
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v5, 0x1f6

    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 244
    const/4 v4, 0x1

    return v4
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 4
    .parameter "initData"

    .prologue
    .line 622
    iget v2, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 623
    .local v2, type:I
    const/16 v1, 0xa1

    .line 625
    .local v1, inputType:I
    const/high16 v0, 0x1200

    .line 627
    .local v0, imeOptions:I
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v3, :cond_0

    .line 628
    const/high16 v3, 0x8

    or-int/2addr v1, v3

    .line 630
    :cond_0
    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    .line 631
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v3, :cond_1

    .line 632
    const/high16 v3, 0x800

    or-int/2addr v0, v3

    .line 634
    :cond_1
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v3, :cond_2

    .line 635
    const/high16 v3, 0x400

    or-int/2addr v0, v3

    .line 638
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 681
    or-int/lit8 v0, v0, 0x2

    .line 684
    :goto_0
    iget-object v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    .line 685
    iput v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 686
    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    .line 687
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 688
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 689
    iget-object v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    .line 690
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 691
    return-void

    .line 640
    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 641
    goto :goto_0

    .line 643
    :pswitch_1
    const v3, 0x2c000

    or-int/2addr v1, v3

    .line 646
    or-int/lit8 v0, v0, 0x1

    .line 647
    goto :goto_0

    .line 649
    :pswitch_2
    or-int/lit16 v1, v1, 0xe0

    .line 650
    or-int/lit8 v0, v0, 0x2

    .line 651
    goto :goto_0

    .line 653
    :pswitch_3
    or-int/lit8 v0, v0, 0x3

    .line 654
    goto :goto_0

    .line 657
    :pswitch_4
    const/16 v1, 0xd1

    .line 659
    or-int/lit8 v0, v0, 0x2

    .line 660
    goto :goto_0

    .line 663
    :pswitch_5
    const/16 v1, 0x3002

    .line 667
    or-int/lit8 v0, v0, 0x5

    .line 668
    goto :goto_0

    .line 671
    :pswitch_6
    const/4 v1, 0x3

    .line 672
    or-int/lit8 v0, v0, 0x5

    .line 673
    goto :goto_0

    .line 677
    :pswitch_7
    or-int/lit8 v0, v0, 0x2

    .line 678
    or-int/lit8 v1, v1, 0x10

    .line 679
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isBatchEditing()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performEditorAction(I)Z
    .locals 7
    .parameter "editorAction"

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 592
    const/4 v0, 0x1

    .line 593
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 614
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 618
    :goto_0
    return v0

    .line 595
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 601
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 605
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)V

    .line 606
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 609
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 459
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 460
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 461
    .local v3, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 462
    .local v2, selectionEnd:I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 463
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 464
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 465
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 467
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 468
    .local v1, newCaret:I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 469
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/16 v11, 0x70

    const/16 v10, 0x43

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 362
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v6, :cond_7

    .line 363
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    const-string/jumbo v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::sendKeyEvent] >> event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 372
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 373
    .local v4, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 375
    .local v3, selectionEnd:I
    if-eq v4, v3, :cond_1

    if-ltz v4, :cond_1

    if-ltz v3, :cond_1

    .line 376
    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 377
    sub-int v5, v3, v4

    invoke-virtual {p0, v5, v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    .line 426
    .end local v0           #editable:Landroid/text/Editable;
    .end local v2           #result:Z
    .end local v3           #selectionEnd:I
    .end local v4           #selectionStart:I
    :goto_0
    return v2

    .line 379
    .restart local v0       #editable:Landroid/text/Editable;
    .restart local v2       #result:Z
    .restart local v3       #selectionEnd:I
    .restart local v4       #selectionStart:I
    :cond_1
    invoke-virtual {p0, v5, v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    goto :goto_0

    .line 384
    .end local v0           #editable:Landroid/text/Editable;
    .end local v2           #result:Z
    .end local v3           #selectionEnd:I
    .end local v4           #selectionStart:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 387
    invoke-virtual {p0, v9, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    .line 389
    .restart local v2       #result:Z
    goto :goto_0

    .line 391
    .end local v2           #result:Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    if-eqz v6, :cond_7

    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, newComposingText:Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    goto :goto_0

    .line 403
    .end local v1           #newComposingText:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_7

    .line 415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-eq v6, v10, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 418
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    move v2, v5

    .line 420
    goto :goto_0

    .line 421
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    if-eqz v6, :cond_7

    move v2, v5

    .line 422
    goto :goto_0

    .line 426
    :cond_7
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setAutoFillable(I)V
    .locals 6
    .parameter "queryId"

    .prologue
    .line 324
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    .line 326
    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 327
    .local v0, variation:I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 334
    :cond_1
    return-void

    .line 324
    .end local v0           #variation:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 752
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 753
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 754
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/16 v7, 0x90

    const/4 v8, 0x1

    .line 474
    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 481
    .local v0, editable:Landroid/text/Editable;
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    .line 482
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 483
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 484
    .local v4, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 485
    .local v1, end:I
    if-ltz v4, :cond_1

    if-gez v1, :cond_6

    .line 486
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 487
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 491
    :goto_0
    if-ge v1, v4, :cond_2

    .line 492
    move v5, v1

    .line 493
    .local v5, temp:I
    move v1, v4

    .line 494
    move v4, v5

    .line 496
    .end local v5           #temp:I
    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 498
    .local v3, limitedText:Ljava/lang/CharSequence;
    if-eq v3, p1, :cond_3

    .line 499
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    .line 501
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 503
    invoke-direct {p0, v4, v1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 509
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 511
    if-eq v3, p1, :cond_5

    .line 515
    iget v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-lez v6, :cond_4

    .line 516
    iput v8, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 517
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->endBatchEdit()Z

    .line 520
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 521
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 522
    .local v2, lastCaret:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 523
    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 525
    .end local v2           #lastCaret:I
    :cond_5
    return v8

    .line 489
    .end local v3           #limitedText:Ljava/lang/CharSequence;
    :cond_6
    iput-boolean v8, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isComposing:Z

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v9, -0x1

    .line 713
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 714
    .local v1, editable:Landroid/text/Editable;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->isEditable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 716
    if-eq p1, p2, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_0

    .line 717
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result p2

    .line 719
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getSelectionStart()I

    move-result v3

    .line 720
    .local v3, oldST:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getSelectionEnd()I

    move-result v2

    .line 723
    .local v2, oldED:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .line 724
    .local v5, s:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 725
    .local v0, e:I
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 726
    const-string/jumbo v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldST="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldED="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1
    if-ne v3, p1, :cond_2

    if-ne v2, p2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v2, :cond_3

    :cond_2
    if-eq v5, v9, :cond_4

    if-eq v0, v9, :cond_4

    .line 735
    :cond_3
    const/4 v4, 0x1

    .line 747
    .end local v0           #e:I
    .end local v2           #oldED:I
    .end local v3           #oldST:I
    .end local v5           #s:I
    :goto_0
    return v4

    .line 739
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v4

    .line 741
    .local v4, result:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 742
    const-string/jumbo v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> set start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    goto :goto_0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 431
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 432
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 434
    .local v1, selectionEnd:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 435
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 439
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 445
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 446
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 447
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 451
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WebViewClassic.WebViewInputConnection::setTextAndKeepSelection] >> selectionStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selectionEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntext=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 694
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 695
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 696
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 697
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 699
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 700
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 701
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 702
    .local v1, selectionEnd:I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 703
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 704
    move v1, v2

    .line 706
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 707
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 708
    return-void
.end method

.method public updateCursor([I)V
    .locals 10
    .parameter "screenLoc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 290
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 291
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->isBatchEditing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 295
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    if-nez p1, :cond_2

    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 297
    .local v7, mScreenOffset:[I
    :goto_0
    if-nez p1, :cond_0

    .line 298
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 299
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    .local v6, cursorRect:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    aget v3, v7, v8

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    aget v4, v7, v9

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->right:I

    aget v5, v7, v8

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    aget v8, v7, v9

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 312
    .end local v6           #cursorRect:Landroid/graphics/Rect;
    .end local v7           #mScreenOffset:[I
    :cond_1
    return-void

    :cond_2
    move-object v7, p1

    .line 296
    goto/16 :goto_0
.end method
