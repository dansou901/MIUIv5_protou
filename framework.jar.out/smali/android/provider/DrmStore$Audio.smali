.class public interface abstract Landroid/provider/DrmStore$Audio;
.super Ljava/lang/Object;
.source "DrmStore.java"

# interfaces
.implements Landroid/provider/DrmStore$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Audio"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final IS_ALARM:Ljava/lang/String; = "is_alarm"

.field public static final IS_MUSIC:Ljava/lang/String; = "is_music"

.field public static final IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final IS_RINGTONE:Ljava/lang/String; = "is_ringtone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "content://drm/audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
