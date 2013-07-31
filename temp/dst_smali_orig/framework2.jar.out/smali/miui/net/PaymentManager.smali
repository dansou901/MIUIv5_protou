.class public Lmiui/net/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/PaymentManager$PaymentManagerFuture;,
        Lmiui/net/PaymentManager$PmsTask;,
        Lmiui/net/PaymentManager$PaymentCallback;,
        Lmiui/net/PaymentManager$PaymentManagerCallback;,
        Lmiui/net/PaymentManager$PaymentListener;,
        Lmiui/net/PaymentManager$AddAccountCallback;,
        Lmiui/net/PaymentManager$LoginCallback;
    }
.end annotation


# static fields
.field public static final CAPABILITY:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DEVICES_WITHOUT_MIBISERVICE:[Ljava/lang/String; = null

.field public static final ERROR_CODE_ACCOUNT_CHANGED:I = 0xa

.field public static final ERROR_CODE_ACCOUNT_FROZEN:I = 0x9

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x5

.field public static final ERROR_CODE_CALLER_INVALID:I = 0xc

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_DUPLICATE_PURCHASE:I = 0x7

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = 0x2

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_ORDER_ERROR:I = 0xd

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x6

.field public static final ERROR_CODE_THIRD_PARTY:I = 0xb

.field public static final ERROR_CODE_USER_ID_MISMATCH:I = 0x8

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final PAYMENT_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_payment_result"

.field public static final PAYMENT_KEY_QUICK:Ljava/lang/String; = "payment_quick"

.field public static final PAYMENT_KEY_TRADE_BALANCE:Ljava/lang/String; = "payment_trade_balance"

.field private static final TAG:Ljava/lang/String; = "PaymentManager"

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_PAYMENT_AUTH_TOKEN_TYPE:Ljava/lang/String; = "billcenter"


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aries_tw"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aries_hk"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/net/PaymentManager;->DEVICES_WITHOUT_MIBISERVICE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lmiui/net/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalRecharge(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lmiui/net/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$400(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalGotoRechargeRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalGotoPayRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/net/PaymentManager;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/net/PaymentManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/PaymentManager;
    .locals 1
    .parameter "context"

    .prologue
    new-instance v0, Lmiui/net/PaymentManager;

    invoke-direct {v0, p0}, Lmiui/net/PaymentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private internalGetMiliBalance(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/net/PaymentManager$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$10;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$10;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V
    .locals 1
    .parameter "activity"
    .parameter "account"

    .prologue
    new-instance v0, Lmiui/net/PaymentManager$11;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/PaymentManager$11;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$11;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    return-void
.end method

.method private internalGotoPayRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    new-instance v0, Lmiui/net/PaymentManager$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$13;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$13;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    return-void
.end method

.method private internalGotoRechargeRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    new-instance v0, Lmiui/net/PaymentManager$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$12;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$12;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    return-void
.end method

.method private internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "order"
    .parameter "extra"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/net/PaymentManager$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$8;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$8;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalRecharge(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lmiui/net/PaymentManager$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$9;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$9;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V
    .locals 9
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .local v8, account:[Landroid/accounts/Account;
    array-length v0, v8

    if-nez v0, :cond_0

    new-instance v6, Lmiui/net/PaymentManager$7;

    invoke-direct {v6, p0, p2}, Lmiui/net/PaymentManager$7;-><init>(Lmiui/net/PaymentManager;Lmiui/net/PaymentManager$LoginCallback;)V

    .local v6, accountCallback:Lmiui/net/PaymentManager$AddAccountCallback;
    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaomi"

    const-string v2, "billcenter"

    move-object v4, v3

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .end local v6           #accountCallback:Lmiui/net/PaymentManager$AddAccountCallback;
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-interface {p2, v0}, Lmiui/net/PaymentManager$LoginCallback;->onSuccess(Landroid/accounts/Account;)V

    goto :goto_0
.end method


# virtual methods
.method public getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V
    .locals 7
    .parameter "activity"
    .parameter "paymentId"
    .parameter "serviceId"
    .parameter "verify"
    .parameter "paymentListener"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$3;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method

.method public gotoMiliCenter(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    new-instance v0, Lmiui/net/PaymentManager$4;

    invoke-direct {v0, p0, p1}, Lmiui/net/PaymentManager$4;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method

.method public gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/PaymentManager$6;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method

.method public gotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/PaymentManager$5;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method

.method public isMibiServiceDisabled()Z
    .locals 7

    .prologue
    const-string v5, "ro.product.mod_device"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, modDevice:Ljava/lang/String;
    sget-object v0, Lmiui/net/PaymentManager;->DEVICES_WITHOUT_MIBISERVICE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, device:Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .end local v1           #device:Ljava/lang/String;
    :goto_1
    return v5

    .restart local v1       #device:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #device:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentListener;)V
    .locals 7
    .parameter "activity"
    .parameter "paymentId"
    .parameter "order"
    .parameter "extra"
    .parameter "paymentListener"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "order cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lmiui/net/PaymentManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$1;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "rechargeId"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lmiui/net/PaymentManager$2;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    return-void
.end method
