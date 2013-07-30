.class public Lcom/htc/htcjavaflag/HtcDebugFlag;
.super Ljava/lang/Object;
.source "HtcDebugFlag.java"


# static fields
.field static DEBUG_FLAG:Ljava/lang/Boolean; = null

.field static final HTCLOG_MASK_VERBOSE_DEBUG_INFO:S = 0x707s

.field static LANGUAGE_FLAG:Ljava/lang/Short;

.field static PROJECT_FLAG:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHtcDebugFlag()Z
    .locals 3

    .prologue
    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/Native;->htcDebugFlagFromJNI()I

    move-result v0

    .local v0, buffer:I
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0x707

    int-to-short v1, v2

    .local v1, flag:S
    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static final getLanguage()S
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/Native;->getLanguageFromJNI()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    return v2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, temp:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v1           #temp:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static final getProject()S
    .locals 4

    .prologue
    const/16 v3, 0x34

    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/Native;->getProjectFromJNI()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    return v2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, temp:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v1           #temp:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
