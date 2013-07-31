.class public abstract Lmiui/push/PushConstants;
.super Ljava/lang/Object;
.source "PushConstants.java"


# static fields
.field public static final ACTION_CHANNEL_CLOSED:Ljava/lang/String; = "com.xiaomi.push.channel_closed"

.field public static final ACTION_CHANNEL_OPENED:Ljava/lang/String; = "com.xiaomi.push.channel_opened"

.field public static ACTION_CLOSE_CHANNEL:Ljava/lang/String; = null

.field public static ACTION_FORCE_RECONNECT:Ljava/lang/String; = null

.field public static final ACTION_KICKED_BY_SERVER:Ljava/lang/String; = "com.xiaomi.push.kicked"

.field public static ACTION_OPEN_CHANNEL:Ljava/lang/String; = null

.field public static final ACTION_RECEIVE_NEW_IQ:Ljava/lang/String; = "com.xiaomi.push.new_iq"

.field public static final ACTION_RECEIVE_NEW_MESSAGE:Ljava/lang/String; = "com.xiaomi.push.new_msg"

.field public static final ACTION_RECEIVE_NEW_PRESENCE:Ljava/lang/String; = "com.xiaomi.push.new_pres"

.field public static ACTION_RESET_CONNECTION:Ljava/lang/String; = null

.field public static ACTION_SEND_IQ:Ljava/lang/String; = null

.field public static ACTION_SEND_MESSAGE:Ljava/lang/String; = null

.field public static ACTION_SEND_PRESENCE:Ljava/lang/String; = null

.field public static final ACTION_SERVICE_STARTED:Ljava/lang/String; = "com.xiaomi.push.service_started"

.field public static final ERROR_ACCESS_DENIED:I = 0x4

.field public static final ERROR_AUTH_FAILED:I = 0x5

.field public static final ERROR_MULTI_LOGIN:I = 0x6

.field public static final ERROR_NETWORK_FAILED:I = 0x3

.field public static final ERROR_NETWORK_NOT_AVAILABLE:I = 0x2

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_SERVER_ERROR:I = 0x7

.field public static final ERROR_SERVICE_NOT_INSTALLED:I = 0x1

.field public static EXTRA_AUTH_METHOD:Ljava/lang/String; = null

.field public static EXTRA_CHANNEL_ID:Ljava/lang/String; = null

.field public static final EXTRA_CHID:Ljava/lang/String; = "ext_chid"

.field public static EXTRA_CLIENT_ATTR:Ljava/lang/String; = null

.field public static EXTRA_CLOUD_ATTR:Ljava/lang/String; = null

.field public static final EXTRA_ERROR:Ljava/lang/String; = "ext_ERROR"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ext_err_code"

.field public static final EXTRA_ERROR_CONDITION:Ljava/lang/String; = "ext_err_cond"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "ext_err_msg"

.field public static final EXTRA_ERROR_REASON:Ljava/lang/String; = "ext_err_reason"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "ext_err_type"

.field public static final EXTRA_EXTENSIONS:Ljava/lang/String; = "ext_exts"

.field public static final EXTRA_EXTENSION_ELEMENT_NAME:Ljava/lang/String; = "ext_ele_name"

.field public static final EXTRA_EXTENSION_NAMESPACE:Ljava/lang/String; = "ext_ns"

.field public static final EXTRA_EXTENSION_TEXT:Ljava/lang/String; = "ext_text"

.field public static final EXTRA_FROM:Ljava/lang/String; = "ext_from"

.field public static final EXTRA_IQ_TYPE:Ljava/lang/String; = "ext_iq_type"

.field public static EXTRA_KICK:Ljava/lang/String; = null

.field public static final EXTRA_KICK_REASON:Ljava/lang/String; = "ext_kick_reason"

.field public static final EXTRA_KICK_TYPE:Ljava/lang/String; = "ext_kick_type"

.field public static final EXTRA_MESSAGE_APPID:Ljava/lang/String; = "ext_msg_appid"

.field public static final EXTRA_MESSAGE_BODY:Ljava/lang/String; = "ext_msg_body"

.field public static final EXTRA_MESSAGE_LANGUAGE:Ljava/lang/String; = "ext_msg_lang"

.field public static final EXTRA_MESSAGE_SUBJECT:Ljava/lang/String; = "ext_msg_sub"

.field public static final EXTRA_MESSAGE_THREAD:Ljava/lang/String; = "ext_msg_thread"

.field public static final EXTRA_MESSAGE_TRANSIENT:Ljava/lang/String; = "ext_msg_trans"

.field public static final EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "ext_msg_type"

.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final EXTRA_PACKET:Ljava/lang/String; = "ext_packet"

.field public static final EXTRA_PACKET_ID:Ljava/lang/String; = "ext_pkt_id"

.field public static final EXTRA_PRES_MODE:Ljava/lang/String; = "ext_pres_mode"

.field public static final EXTRA_PRES_PRIORITY:Ljava/lang/String; = "ext_pres_prio"

.field public static final EXTRA_PRES_STATUS:Ljava/lang/String; = "ext_pres_status"

.field public static final EXTRA_PRES_TYPE:Ljava/lang/String; = "ext_pres_type"

.field public static final EXTRA_REASON:Ljava/lang/String; = "ext_reason"

.field public static final EXTRA_REASON_MSG:Ljava/lang/String; = "ext_reason_msg"

.field public static EXTRA_SECURITY:Ljava/lang/String; = null

.field public static final EXTRA_SUCCEEDED:Ljava/lang/String; = "ext_succeeded"

.field public static final EXTRA_TO:Ljava/lang/String; = "ext_to"

.field public static EXTRA_TOKEN:Ljava/lang/String; = null

.field public static EXTRA_USER_ID:Ljava/lang/String; = null

.field public static final PUSH_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.xmsf.push.service.XMPushService"

.field public static final PUSH_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.xmsf"

.field public static final REASON_INVALID_SIGNATURE:Ljava/lang/String; = "invalid-sig"

.field public static final REASON_INVALID_TOKEN:Ljava/lang/String; = "invalid-token"

.field public static final REASON_TOKEN_EXPIRED:Ljava/lang/String; = "token-expired"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "com.xiaomi.push.OPEN_CHANNEL"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.SEND_MESSAGE"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.SEND_IQ"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.SEND_PRES"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.CLOSE_CHANNEL"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.FORCE_RECONN"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    const-string v0, "com.xiaomi.push.RESET_CONN"

    sput-object v0, Lmiui/push/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    const-string v0, "ext_user_id"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    const-string v0, "ext_chid"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    const-string v0, "ext_token"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    const-string v0, "ext_auth_method"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    const-string v0, "ext_security"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    const-string v0, "ext_kick"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    const-string v0, "ext_client_attr"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    const-string v0, "ext_cloud_attr"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    const-string v0, "ext_pkg_name"

    sput-object v0, Lmiui/push/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
