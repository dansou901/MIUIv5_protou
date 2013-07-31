.class public Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PWMUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 7091
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 7093
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 7095
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 7094
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getKeyguardMediator()Lcom/android/internal/policy/impl/KeyguardViewMediator;
    .locals 1

    .prologue
    .line 7092
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    return-object v0
.end method
