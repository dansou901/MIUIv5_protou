.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_SELECTION_END:I = 0x1a4

.field private static final DO_GET_SELECTION_START:I = 0x19a

.field private static final DO_GET_SUB_TEXT:I = 0x1b8

.field private static final DO_GET_TEXT:I = 0x190

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPLACE_TEXT:I = 0x1ae

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 94
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 95
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .parameter "states"

    .prologue
    .line 164
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 165
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 128
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 132
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 124
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 168
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 178
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x3c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 553
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return-void

    .line 231
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 233
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 234
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    :cond_0
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 247
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 249
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 250
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 251
    :cond_2
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 257
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v1

    .line 258
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    :try_start_3
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 263
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 265
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 266
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_5

    .line 267
    :cond_4
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 273
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v1

    .line 274
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setSelectedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 271
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_5
    :try_start_5
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 279
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 281
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 282
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 283
    :cond_6
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCursorCapsMode on inactive InputConnection. ic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 289
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v1

    .line 290
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 287
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_7
    :try_start_7
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 295
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 297
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 298
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 299
    :cond_8
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getExtractedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 305
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_4
    move-exception v1

    .line 306
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setExtractedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 303
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_9
    :try_start_9
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v3, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 311
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_5
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 312
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_b

    .line 313
    :cond_a
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputConnection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", active client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInputUnchecked(I)V

    goto/16 :goto_0

    .line 318
    :cond_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    .line 322
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 323
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_d

    .line 324
    :cond_c
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "setSelection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_d
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 331
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 332
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_f

    .line 333
    :cond_e
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performEditorAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_f
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_0

    .line 340
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 341
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_11

    .line 342
    :cond_10
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performContextMenuAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    :cond_11
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_0

    .line 349
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 350
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_13

    .line 351
    :cond_12
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCompletion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    const/16 v4, 0x37

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInputUnchecked(I)V

    goto/16 :goto_0

    .line 355
    :cond_13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_0

    .line 359
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 360
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_15

    .line 361
    :cond_14
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCorrection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 364
    :cond_15
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    goto/16 :goto_0

    .line 368
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 369
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_17

    .line 370
    :cond_16
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setComposingText on inactive InputConnection. ic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodManager;->restartInputUnchecked(I)V

    goto/16 :goto_0

    .line 374
    :cond_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    .line 378
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 379
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_19

    .line 380
    :cond_18
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "setComposingRegion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    :cond_19
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto/16 :goto_0

    .line 387
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 392
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1a

    .line 393
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "finishComposingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    :cond_1a
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_0

    .line 400
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 401
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 402
    :cond_1b
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "sendKeyEvent on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 405
    :cond_1c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 409
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 410
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 411
    :cond_1d
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_1e
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_0

    .line 418
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 419
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_20

    .line 420
    :cond_1f
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodManager;->restartInputUnchecked(I)V

    goto/16 :goto_0

    .line 424
    :cond_20
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 428
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 429
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_22

    .line 430
    :cond_21
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "beginBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 433
    :cond_22
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_0

    .line 437
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 438
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_24

    .line 439
    :cond_23
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "endBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :cond_24
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 446
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    iget-object v5, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 447
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_26

    .line 448
    :cond_25
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "showStatusIcon on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputConnection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", active client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :cond_26
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_27

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_0

    :cond_27
    move v3, v4

    goto :goto_1

    .line 456
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 457
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_29

    .line 458
    :cond_28
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performPrivateCommand on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :cond_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 462
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 469
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 470
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 473
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2a

    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 474
    :cond_2a
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 480
    :catch_5
    move-exception v1

    .line 481
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSelectionStart"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 478
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2b
    :try_start_b
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getSelectionStart()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 487
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 488
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 491
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2c

    :try_start_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 492
    :cond_2c
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionEnd on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionEnd(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 498
    :catch_6
    move-exception v1

    .line 499
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSelectionEnd"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 496
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2d
    :try_start_d
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getSelectionEnd()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 504
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 506
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 507
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 508
    :cond_2e
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "replaceText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 512
    :cond_2f
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v5, v3}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 516
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 517
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 520
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_30

    :try_start_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_31

    .line 521
    :cond_30
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setText(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 527
    :catch_7
    move-exception v1

    .line 528
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 525
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_31
    :try_start_f
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 534
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 535
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 538
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_32

    :try_start_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_33

    .line 539
    :cond_32
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSubText(Ljava/lang/CharSequence;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 545
    :catch_8
    move-exception v1

    .line 546
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSubText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 543
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_33
    :try_start_11
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getSubText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSubText(Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x5a -> :sswitch_11
        0x5f -> :sswitch_12
        0x64 -> :sswitch_13
        0x78 -> :sswitch_14
        0x82 -> :sswitch_f
        0x190 -> :sswitch_18
        0x19a -> :sswitch_15
        0x1a4 -> :sswitch_16
        0x1ae -> :sswitch_17
        0x1b8 -> :sswitch_19
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 157
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .parameter "reqModes"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 114
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 115
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "request"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 119
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 110
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public getSelectionEnd(Lcom/android/internal/view/IInputContextCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 196
    const/16 v0, 0x1a4

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 197
    return-void
.end method

.method public getSelectionStart(Lcom/android/internal/view/IInputContextCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 191
    const/16 v0, 0x19a

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method public getSubText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "callback"

    .prologue
    .line 211
    const/16 v1, 0x1b8

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public getText(Lcom/android/internal/view/IInputContextCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 206
    const/16 v0, 0x190

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 207
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 102
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 106
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 604
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 605
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 576
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 577
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 578
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 579
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 584
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 585
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 586
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 587
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 588
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 569
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 570
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 571
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 572
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 596
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 597
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 598
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 144
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 140
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 141
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 185
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 201
    const/16 v0, 0x1ae

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 181
    const/16 v2, 0x64

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 182
    return-void

    :cond_0
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 160
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 148
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 149
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 152
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 153
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 136
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 137
    return-void
.end method
