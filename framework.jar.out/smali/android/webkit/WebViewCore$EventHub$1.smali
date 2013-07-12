.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 60
    .parameter "msg"

    .prologue
    .line 1340
    sget v2, Landroid/webkit/WebCoreThreadWatchdog;->HOST_TYPE_WEBVIEWCORE:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v2, v4}, Landroid/webkit/WebCoreThreadWatchdog;->regiestMonitoringMessage(II)V

    .line 1344
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1346
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$802(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1349
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;I)V

    goto :goto_0

    .line 1356
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1357
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    goto :goto_0

    .line 1368
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$1200(Landroid/webkit/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 1376
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCoreImpl;->transferMessage(Landroid/os/Message;)V

    .line 1984
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1f5

    if-ne v2, v4, :cond_3

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/16 v4, -0xa

    #calls: Landroid/webkit/WebViewCore;->updateContent(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;I)V

    .line 1991
    :cond_3
    :goto_1
    :sswitch_0
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->unRegisterMonitoringMessage()V

    goto/16 :goto_0

    .line 1379
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/16 v4, 0x82

    const/4 v5, 0x0

    const-wide/16 v10, 0x64

    invoke-virtual {v2, v4, v5, v10, v11}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_1

    .line 1384
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)V

    goto :goto_1

    .line 1390
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v4

    .line 1391
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->shutdown()V

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1396
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1397
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->onDestroyed()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$302(Landroid/webkit/WebViewCore;I)I

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic;

    .line 1402
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1396
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1406
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeRevealSelection(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1411
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 1412
    const/16 v58, 0x0

    .line 1416
    .local v58, xPercent:F
    :goto_2
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 1417
    .local v28, contentBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v58

    move-object/from16 v1, v28

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(IFILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0, v5, v1}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IFILandroid/graphics/Rect;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x98

    move-object/from16 v0, v28

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1414
    .end local v28           #contentBounds:Landroid/graphics/Rect;
    .end local v58           #xPercent:F
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v58

    .restart local v58       #xPercent:F
    goto :goto_2

    .line 1426
    .end local v58           #xPercent:F
    :sswitch_5
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1427
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1428
    .local v48, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v48

    iget-object v4, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v48

    iget-object v5, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1433
    .end local v48           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_6
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1434
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1435
    .local v48, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v48

    iget-object v4, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v48

    iget-object v5, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v5}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1439
    .end local v48           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_7
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1440
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1441
    .local v41, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1442
    .local v3, baseUrl:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1443
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    .line 1444
    .local v38, i:I
    if-lez v38, :cond_6

    .line 1452
    const/4 v2, 0x0

    move/from16 v0, v38

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v56

    .line 1453
    .local v56, scheme:Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ftp"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "about"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "javascript"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v56

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    .line 1462
    .end local v38           #i:I
    .end local v56           #scheme:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v7, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1475
    .end local v3           #baseUrl:Ljava/lang/String;
    .end local v41           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1480
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_1

    .line 1484
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1489
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V

    .line 1493
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1

    .line 1498
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V

    .line 1502
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1

    .line 1506
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->keyPress(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1512
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewClassic$ViewSizeData;

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebViewClassic$ViewSizeData;)Z
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic$ViewSizeData;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->isInBrowserApp()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1524
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/graphics/Point;

    .line 1525
    .local v49, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v49

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v49

    iget v10, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v5, v2, v7, v10}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;IZII)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 1532
    .end local v49           #pt:Landroid/graphics/Point;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/graphics/Point;

    .line 1533
    .local v50, pt2:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mScroller:Landroid/webkit/HTCScroller;

    invoke-virtual {v2}, Landroid/webkit/HTCScroller;->abortAnimation()V

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_b

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v50

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v50

    iget v10, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v5, v2, v7, v10}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;IZII)V

    .line 1536
    const/16 v2, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore$EventHub$1;->removeMessages(I)V

    goto/16 :goto_1

    .line 1534
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 1540
    .end local v50           #pt2:Landroid/graphics/Point;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/graphics/Rect;

    .line 1541
    .local v51, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v51

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v51

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1548
    .end local v51           #r:Landroid/graphics/Rect;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_c

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1553
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_1

    .line 1558
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1564
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativePause(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1568
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeResume(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mIsMultitabManagementOn:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mIsLastDrawSkipped:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1576
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;Z)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1581
    :sswitch_16
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_d

    .line 1582
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    :cond_d
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_e

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 1590
    :sswitch_17
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_f

    .line 1591
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1594
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/Map;

    .line 1595
    .local v42, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v42

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1600
    .end local v42           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    const/4 v2, 0x1

    :goto_6
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    .line 1604
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_1

    .line 1609
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1610
    .local v53, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v53

    iget-object v8, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v53

    iget v9, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v53

    iget v10, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v53

    iget v11, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V
    invoke-static/range {v4 .. v11}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;IIILjava/lang/String;III)V

    goto/16 :goto_1

    .line 1616
    .end local v53           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1617
    .local v40, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v34, v0

    .line 1618
    .local v34, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 1619
    .local v8, keyCode:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 1620
    .local v9, keyValue:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1621
    .local v6, generation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v40

    iget-object v7, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->isDown()Z

    move-result v10

    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    invoke-virtual/range {v34 .. v34}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v13

    #calls: Landroid/webkit/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v13}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;IILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1

    .line 1632
    .end local v6           #generation:I
    .end local v8           #keyCode:I
    .end local v9           #keyValue:I
    .end local v34           #evt:Landroid/view/KeyEvent;
    .end local v40           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1639
    :sswitch_1d
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/SslCertLookupTable;->clear()V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1644
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_11

    const/4 v2, 0x1

    :goto_7
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 1648
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1649
    .local v40, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v40

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v40

    iget-object v5, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-boolean v7, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    invoke-virtual {v2, v4, v5, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1654
    .end local v40           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1655
    .restart local v40       #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v40

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1660
    .end local v40           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1665
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1669
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1673
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    #calls: Landroid/webkit/WebViewCore;->performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v36

    .line 1674
    .local v36, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Message;

    .line 1675
    .local v37, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v32

    .line 1676
    .local v32, data:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string/jumbo v2, "title"

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v2, "src"

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1684
    .end local v32           #data:Landroid/os/Bundle;
    .end local v36           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    .end local v37           #hrefMsg:Landroid/os/Message;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/Message;

    .line 1685
    .local v39, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1687
    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1685
    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 1691
    .end local v39           #imageResult:Landroid/os/Message;
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1693
    .local v33, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v33

    iget v5, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v33

    iget v7, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(IIII)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1698
    .end local v33           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1702
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x1

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4302(Landroid/webkit/WebViewCore;I)I

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;III)Ljava/lang/String;

    move-result-object v45

    .line 1707
    .local v45, modifiedSelectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    move-object/from16 v0, v45

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4302(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1715
    .end local v45           #modifiedSelectionString:Ljava/lang/String;
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/util/SparseBooleanArray;

    .line 1717
    .local v25, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1718
    .local v27, choicesSize:I
    move/from16 v0, v27

    new-array v0, v0, [Z

    move-object/from16 v26, v0

    .line 1719
    .local v26, choicesArray:[Z
    const/16 v24, 0x0

    .local v24, c:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 1720
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v26, v24

    .line 1719
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 1722
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v26

    move/from16 v1, v27

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices(I[ZI)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;I[ZI)V

    goto/16 :goto_1

    .line 1727
    .end local v24           #c:I
    .end local v25           #choices:Landroid/util/SparseBooleanArray;
    .end local v26           #choicesArray:[Z
    .end local v27           #choicesSize:I
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1731
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1735
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_14

    const/4 v2, 0x1

    :goto_a
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_14
    const/4 v2, 0x0

    goto :goto_a

    .line 1739
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    const/4 v2, 0x1

    :goto_b
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_15
    const/4 v2, 0x0

    goto :goto_b

    .line 1743
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1747
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1751
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 1753
    .local v55, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v55

    iget-object v4, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v55

    iget-boolean v5, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    #calls: Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v55

    iput-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x84

    move-object/from16 v0, v55

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1760
    .end local v55           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1762
    .local v32, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-boolean v7, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v32

    iget-boolean v10, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;ILjava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1770
    .end local v32           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->clearContent()V

    goto/16 :goto_1

    .line 1774
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1778
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;I[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1782
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1786
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativePluginSurfaceReady(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1790
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1794
    :sswitch_38
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_16

    .line 1795
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1798
    :cond_16
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_1

    .line 1803
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->setUseMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1807
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeAutoFillForm(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;II)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1813
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1822
    :sswitch_3c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    .line 1823
    .local v46, nativeLayer:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/graphics/Rect;

    .line 1824
    .local v52, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move/from16 v0, v46

    move-object/from16 v1, v52

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1829
    .end local v46           #nativeLayer:I
    .end local v52           #rect:Landroid/graphics/Rect;
    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v35, v2

    check-cast v35, [I

    .line 1830
    .local v35, handles:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v35, v2

    const/4 v2, 0x1

    aget v13, v35, v2

    const/4 v2, 0x2

    aget v14, v35, v2

    const/4 v2, 0x3

    aget v15, v35, v2

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteText(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;IIIII)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/16 v4, -0xa

    #calls: Landroid/webkit/WebViewCore;->updateContent(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1842
    .end local v35           #handles:[I
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v35, v2

    check-cast v35, [I

    .line 1843
    .restart local v35       #handles:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v35, v2

    const/4 v2, 0x1

    aget v13, v35, v2

    const/4 v2, 0x2

    aget v14, v35, v2

    const/4 v2, 0x3

    aget v15, v35, v2

    #calls: Landroid/webkit/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIIII)Ljava/lang/String;

    move-result-object v30

    .line 1847
    .local v30, copiedText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v35, v2

    const/4 v2, 0x1

    aget v13, v35, v2

    const/4 v2, 0x2

    aget v14, v35, v2

    const/4 v2, 0x3

    aget v15, v35, v2

    invoke-virtual/range {v10 .. v15}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHtml(IIIII)Ljava/lang/String;

    move-result-object v29

    .line 1852
    .local v29, copiedHtml:Ljava/lang/String;
    :goto_c
    if-nez v30, :cond_17

    if-eqz v29, :cond_17

    .line 1853
    const-string v30, ""

    .line 1855
    :cond_17
    if-eqz v30, :cond_3

    .line 1857
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v2, 0x0

    aput-object v30, v31, v2

    const/4 v2, 0x1

    aput-object v29, v31, v2

    .line 1859
    .local v31, cpoied:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1847
    .end local v29           #copiedHtml:Ljava/lang/String;
    .end local v31           #cpoied:[Ljava/lang/String;
    :cond_18
    const/16 v29, 0x0

    goto :goto_c

    .line 1866
    .end local v30           #copiedText:Ljava/lang/String;
    .end local v35           #handles:[I
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeInsertText(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1869
    :sswitch_40
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v23, v2

    check-cast v23, [I

    .line 1870
    .local v23, args:[I
    if-nez v23, :cond_19

    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1873
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v23, v2

    const/4 v2, 0x1

    aget v13, v23, v2

    const/4 v2, 0x2

    aget v14, v23, v2

    const/4 v2, 0x3

    aget v15, v23, v2

    #calls: Landroid/webkit/WebViewCore;->nativeSelectText(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1879
    .end local v23           #args:[I
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x2

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4302(Landroid/webkit/WebViewCore;I)I

    .line 1881
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    .line 1882
    .local v57, x:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    .line 1883
    .local v59, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getWebSelectionType()I

    move-result v5

    move/from16 v0, v57

    move/from16 v1, v59

    #calls: Landroid/webkit/WebViewCore;->nativeSelectWordAt(IIII)Z
    invoke-static {v2, v4, v0, v1, v5}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;IIII)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x97

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1891
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4302(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1896
    .end local v57           #x:I
    .end local v59           #y:I
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeSelectAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1899
    :sswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 1900
    .local v54, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-eqz v54, :cond_1b

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v54

    iget-object v5, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;ILjava/lang/String;)I

    move-result v43

    .line 1902
    .local v43, matchCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;IZ)I

    move-result v44

    .line 1903
    .local v44, matchIndex:I
    monitor-enter v54

    .line 1904
    :try_start_5
    move/from16 v0, v43

    move-object/from16 v1, v54

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    .line 1905
    move/from16 v0, v44

    move-object/from16 v1, v54

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 1906
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notify()V

    .line 1907
    monitor-exit v54
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1911
    .end local v43           #matchCount:I
    .end local v44           #matchIndex:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v54

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1907
    .restart local v43       #matchCount:I
    .restart local v44       #matchIndex:I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v54
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 1909
    .end local v43           #matchCount:I
    .end local v44           #matchIndex:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    const/4 v5, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;ILjava/lang/String;)I

    goto :goto_d

    .line 1916
    .end local v54           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 1917
    .restart local v54       #request:Landroid/webkit/WebViewCore$FindAllRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_e
    #calls: Landroid/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;IZ)I

    move-result v44

    .line 1918
    .restart local v44       #matchIndex:I
    monitor-enter v54

    .line 1919
    :try_start_7
    move/from16 v0, v44

    move-object/from16 v1, v54

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 1920
    monitor-exit v54
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v54

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1917
    .end local v44           #matchIndex:I
    :cond_1c
    const/4 v2, 0x0

    goto :goto_e

    .line 1920
    .restart local v44       #matchIndex:I
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v54
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    .line 1926
    .end local v44           #matchIndex:I
    .end local v54           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetInitialFocus(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1929
    :sswitch_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$SaveViewStateRequest;

    .line 1930
    .local v54, request:Landroid/webkit/WebViewCore$SaveViewStateRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v54

    iget-object v4, v0, Landroid/webkit/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    move-object/from16 v0, v54

    iget-object v5, v0, Landroid/webkit/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkit/ValueCallback;

    #calls: Landroid/webkit/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_1

    .line 1937
    .end local v54           #request:Landroid/webkit/WebViewCore$SaveViewStateRequest;
    :sswitch_47
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v12, v2, v4

    .line 1938
    .local v12, year:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x1

    aget v13, v2, v4

    .line 1939
    .local v13, month:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeSetMonthValue(IIIIIII)V
    invoke-static/range {v10 .. v17}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;IIIIIII)V

    goto/16 :goto_1

    .line 1944
    .end local v12           #year:I
    .end local v13           #month:I
    :sswitch_48
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v12, v2, v4

    .line 1945
    .restart local v12       #year:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x1

    aget v13, v2, v4

    .line 1946
    .restart local v13       #month:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x2

    aget v14, v2, v4

    .line 1947
    .local v14, day:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeSetDateValue(IIIIIII)V
    invoke-static/range {v10 .. v17}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;IIIIIII)V

    goto/16 :goto_1

    .line 1953
    .end local v12           #year:I
    .end local v13           #month:I
    .end local v14           #day:I
    :sswitch_49
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v12, v2, v4

    .line 1955
    .restart local v12       #year:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x3

    aget v20, v2, v4

    .line 1956
    .local v20, hour:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x4

    aget v21, v2, v4

    .line 1957
    .local v21, minute:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x5

    aget v22, v2, v4

    .line 1958
    .local v22, second:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v12

    #calls: Landroid/webkit/WebViewCore;->nativeSetTimeValue(IIIIIII)V
    invoke-static/range {v15 .. v22}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;IIIIIII)V

    goto/16 :goto_1

    .line 1963
    .end local v12           #year:I
    .end local v20           #hour:I
    .end local v21           #minute:I
    .end local v22           #second:I
    :sswitch_4a
    const-string/jumbo v2, "mc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set range value msg.arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1969
    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/graphics/Point;

    .line 1970
    .local v47, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v47

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v47

    iget v7, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeGetHitTestNode(III)I
    invoke-static {v4, v5, v7}, Landroid/webkit/WebViewCore;->access$7600(III)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore;->mFocusedNodeScaleBegin:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7502(Landroid/webkit/WebViewCore;I)I

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mFocusedNodeScaleBegin:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore;->mLastHitTestNode:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7702(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1975
    .end local v47           #p:Landroid/graphics/Point;
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mLastHitTestNode:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore;->mFocusedNodeScaleBegin:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7502(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1978
    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    #calls: Landroid/webkit/WebViewCore;->nativeCancelShowedRect(I)V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7800(I)V

    goto/16 :goto_1

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1376
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_3
        0x63 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_d
        0x6a -> :sswitch_11
        0x6b -> :sswitch_e
        0x6c -> :sswitch_12
        0x6f -> :sswitch_18
        0x70 -> :sswitch_19
        0x71 -> :sswitch_27
        0x72 -> :sswitch_1a
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_10
        0x77 -> :sswitch_16
        0x78 -> :sswitch_25
        0x7a -> :sswitch_26
        0x7b -> :sswitch_29
        0x7c -> :sswitch_2a
        0x7d -> :sswitch_33
        0x7e -> :sswitch_2b
        0x80 -> :sswitch_1c
        0x82 -> :sswitch_1
        0x84 -> :sswitch_6
        0x86 -> :sswitch_32
        0x87 -> :sswitch_23
        0x89 -> :sswitch_24
        0x8a -> :sswitch_1f
        0x8b -> :sswitch_7
        0x8e -> :sswitch_1e
        0x8f -> :sswitch_13
        0x90 -> :sswitch_14
        0x91 -> :sswitch_15
        0x93 -> :sswitch_30
        0x95 -> :sswitch_20
        0x96 -> :sswitch_1d
        0xa0 -> :sswitch_21
        0xa1 -> :sswitch_22
        0xaa -> :sswitch_2c
        0xab -> :sswitch_2d
        0xae -> :sswitch_2e
        0xaf -> :sswitch_2f
        0xb4 -> :sswitch_31
        0xb5 -> :sswitch_34
        0xb6 -> :sswitch_35
        0xb7 -> :sswitch_17
        0xb8 -> :sswitch_38
        0xbe -> :sswitch_28
        0xbf -> :sswitch_39
        0xc0 -> :sswitch_3a
        0xc2 -> :sswitch_3b
        0xc3 -> :sswitch_36
        0xc4 -> :sswitch_37
        0xc6 -> :sswitch_3c
        0xc8 -> :sswitch_2
        0xd2 -> :sswitch_3e
        0xd3 -> :sswitch_3d
        0xd4 -> :sswitch_3f
        0xd5 -> :sswitch_40
        0xd6 -> :sswitch_41
        0xd7 -> :sswitch_42
        0xdd -> :sswitch_43
        0xde -> :sswitch_44
        0xdf -> :sswitch_c
        0xe0 -> :sswitch_45
        0xe1 -> :sswitch_46
        0x119 -> :sswitch_47
        0x11a -> :sswitch_48
        0x11b -> :sswitch_49
        0x11c -> :sswitch_0
        0x11d -> :sswitch_4a
        0x11e -> :sswitch_f
        0x122 -> :sswitch_4b
        0x123 -> :sswitch_4c
        0x124 -> :sswitch_4d
    .end sparse-switch
.end method
