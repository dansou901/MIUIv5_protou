.class public Landroid/service/dreams/IDreamManagerProxy;
.super Ljava/lang/Object;
.source "IDreamManagerProxy.java"


# instance fields
.field private mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor <init>(Landroid/service/dreams/IDreamManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    return-void
.end method


# virtual methods
.method public getDreamComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public setDreamComponent(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->setDreamComponent(Landroid/content/ComponentName;)V

    return-void
.end method
