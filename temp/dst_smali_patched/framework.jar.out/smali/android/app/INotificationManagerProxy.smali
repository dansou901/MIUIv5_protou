.class public Landroid/app/INotificationManagerProxy;
.super Ljava/lang/Object;
.source "INotificationManagerProxy.java"


# instance fields
.field private mService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/INotificationManagerProxy;->mService:Landroid/app/INotificationManager;

    return-void
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/INotificationManagerProxy;->mService:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idReceived"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/INotificationManagerProxy;->mService:Landroid/app/INotificationManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    return-void
.end method
