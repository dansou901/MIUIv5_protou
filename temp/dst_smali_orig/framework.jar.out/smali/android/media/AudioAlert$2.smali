.class Landroid/media/AudioAlert$2;
.super Ljava/lang/Object;
.source "AudioAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioAlert;


# direct methods
.method constructor <init>(Landroid/media/AudioAlert;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioAlert$2;->this$0:Landroid/media/AudioAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert$2;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioAlert;->access$102(Z)Z

    :goto_0
    iget-object v0, p0, Landroid/media/AudioAlert$2;->this$0:Landroid/media/AudioAlert;

    const-string v1, "listen_notify_checkbox_sellected"

    invoke-static {}, Landroid/media/AudioAlert;->access$100()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioAlert;->access$300(Landroid/media/AudioAlert;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/AudioAlert$2;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioAlert;->access$102(Z)Z

    goto :goto_0
.end method
