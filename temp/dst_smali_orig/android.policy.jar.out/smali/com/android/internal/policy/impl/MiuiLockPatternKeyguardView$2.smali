.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createTorchCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->turnOffTorch()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    return-void
.end method
