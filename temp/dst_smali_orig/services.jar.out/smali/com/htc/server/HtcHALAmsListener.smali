.class public Lcom/htc/server/HtcHALAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcHALAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcHALAmsListener"


# instance fields
.field private mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    new-instance v0, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    const-string v1, "HtcHALAmsListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;-><init>(Lcom/htc/server/HtcHALAmsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->start()V

    return-void
.end method


# virtual methods
.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 1
    .parameter "topApp"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcHALAmsListener;->mUpdateThread:Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcHALAmsListener$StatusUpdateThread;->notifyTopAppChanged()V

    return-void
.end method
