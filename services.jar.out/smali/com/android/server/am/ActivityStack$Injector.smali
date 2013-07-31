.class Lcom/android/server/am/ActivityStack$Injector;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDestroyHomeReasonAlwaysOrFinishing(Ljava/lang/String;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "reason"
    .parameter "record"

    .prologue
    .line 80
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const-string v0, "always-finish"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.miui.home"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
