.class public final Lmiui/provider/ExtraTelephony$Whitelist;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Whitelist"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/firewall-whitelist"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/firewall-whitelist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1132
    const-string v0, "content://firewall/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method